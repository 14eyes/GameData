require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023115OrphanDelete = class("Q4023115OrphanDelete", GadgetActorProxy)
Q4023115OrphanDelete.defaultAlias = "Q4023115OrphanDelete"
local Q40231ClientConfig = require("Quest/Client/Q40231ClientConfig")

local this
local subIDs = Q40231ClientConfig.SubIDs
local datas = Q40231ClientConfig.Datas
local npcs = Q40231ClientConfig.Npcs
local points = Q40231ClientConfig.Points

function Q4023115OrphanDelete:OnPostDataPrepare()
    print("Q4023115OrphanDelete - OnPostDataPrepare")
    this = self
end

function Q4023115OrphanDelete:OnPostComponentPrepare()
    print("Q4023115OrphanDelete - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40231)
end

function Q4023115OrphanDelete:TriggerIn()
    print("Q4023115OrphanDelete - TriggerIn")
end

function Q4023115OrphanDelete:PreTriggerIn()
    print("Q4023115OrphanDelete - PreTriggerIn")
end

function Q4023115OrphanDelete:LightUpTriggerIn()
    print("Q4023115OrphanDelete - LightUpTriggerIn")
end

function Q4023115OrphanDelete:TriggerOut()
    print("Q4023115OrphanDelete - TriggerOut")
    actorMgr:GetActor("40231"):GetQuestNpcActor(npcs.Qin.alias, 40231):DestroyWithDitherEx(0.5)
    actorMgr:GetActor("40231"):GetQuestNpcActor(npcs.Npc1019.alias, 40231):DestroyWithDitherEx(0.5)
    actorMgr:GetActor("40231"):GetQuestNpcActor(npcs.Npc1018.alias, 40231):DestroyWithDitherEx(0.5)
    actorMgr:GetActor("40231"):DestroyQuestNpcActor(npcs.Npc30954.alias, 1004)
    this:DestroySelf()
end

return Q4023115OrphanDelete
