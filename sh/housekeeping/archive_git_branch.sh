#!/usr/bin/bash

GIT_CMD="$(which git)"
GIT_TAG="$GIT_CMD tag"
GIT_PUSH="$GIT_CMD push"

# bash archive_git_branch.sh <branch_name>
BRANCH_NAME=$1
echo "Archiving branch: ${BRANCH_NAME}"

${GIT_TAG} archive/${BRANCH_NAME} origin/${BRANCH_NAME}

echo "Deleting old branch"
git push origin --delete ${BRANCH_NAME}

echo "Pushing archive tag"
git push --tags

echo "Done"
