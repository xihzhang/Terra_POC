resource "genesyscloud_user" "example_user" {
  email           = "TerraDemoDay2@example.com"
  name            = "TerraPOCTestDemoDay2"
  password        = "Initial-Password123!"
  #division_id     = genesyscloud_auth_division.home.id
  state           = "active"
  department      = "Development"
  title           = "Senior Director"
  #manager         = genesyscloud_user.example-user-manager.id
  acd_auto_answer = true
  profile_skills  = ["Java", "Go"]
  certifications  = ["Certified Developer"]
  addresses {
    other_emails {
      address = "john@gmail.com"
      type    = "HOME"
    }
    phone_numbers {
      number     = "+13174181234"
      media_type = "PHONE"
      type       = "MOBILE"
    }
  }
  #routing_skills {
  #  skill_id    = genesyscloud_routing_skill.test-skill.id
  #  proficiency = 4.5
  #}
  #routing_languages {
  #  language_id = genesyscloud_routing_language.english.id
  #  proficiency = 4
  #}
  #locations {
  #  location_id = genesyscloud_location.main-site.id
  #  notes       = "Office 201"
  #}
  employer_info {
    official_name = "Jonathon Doe"
    employee_id   = "12345"
    employee_type = "Full-time"
    date_hire     = "2021-03-18"
  }
  routing_utilization {
    call {
      maximum_capacity = 1
      include_non_acd  = true
    }
    callback {
      maximum_capacity          = 2
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
    }
    chat {
      maximum_capacity          = 3
      include_non_acd           = false
      interruptible_media_types = ["call"]
    }
    email {
      maximum_capacity          = 2
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
    message {
      maximum_capacity          = 4
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
  }
}
