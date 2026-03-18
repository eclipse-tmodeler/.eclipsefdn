local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('modeling.tmodeler', 'eclipse-tmodeler') {
  settings+: {
    description: "",
    name: "Eclipse TModeler Project",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('project-website') {
      description: "Project website",
    },
    orgs.newRepo('tmodeler-cpp') {
      description: "TModeler C++ implementation",
    },
  ],
}
