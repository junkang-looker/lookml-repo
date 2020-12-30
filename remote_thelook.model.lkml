connection: "thelook_crunchbase"

# include all the views
include: "acquisitions.view"

# include all the dashboards
# include: "*.dashboard"

explore: acquisitions {
  label: "Remote Acquisitions"
  query: acquisition_query {
    dimensions: [acquisitions.acquired_by]
    limit:  5
  }
}