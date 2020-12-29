connection: "thelook_crunchbase"

# include all the views
include: "acquisitions.view"

# include all the dashboards
# include: "*.dashboard"

explore: acquisitions {
  label: "remote_acquisitions"
}