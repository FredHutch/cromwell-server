# build me as dockerimages.fhcrc.org/cromwell:callcachingpr

FROM broadinstitute/cromwell:39

RUN mkdir /jars

COPY cromwell-40-591fb7c-SNAP.jar /jars/

ENTRYPOINT []


CMD java -Dconfig.file=/run/secrets/aws.callcaching.conf -jar /jars/cromwell-40-591fb7c-SNAP.jar server
