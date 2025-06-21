using {Project_BTP as entities } from '../db/Schema';

service ProjectBTP {
    entity Headers as projection on entities.Headers;
    entity Items as projection on entities.Items;
}