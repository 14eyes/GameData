require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7524704Trigger = class("Q7524704Trigger", GadgetActorProxy)
Q7524704Trigger.defaultAlias = "Q7524704Trigger"
local Q75247ClientConfig = require("Quest/Client/Q75247ClientConfig")

local this
local subIDs = Q75247ClientConfig.SubIDs
local datas = Q75247ClientConfig.Datas
local npcs = Q75247ClientConfig.Npcs
local points = Q75247ClientConfig.Points

function Q7524704Trigger:OnPostDataPrepare()
    print("Q7524704Trigger - OnPostDataPrepare")
    this = self
end

function Q7524704Trigger:OnPostComponentPrepare()
    print("Q7524704Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75247)
end

function Q7524704Trigger:TriggerIn()
    print("Q7524704Trigger - TriggerIn")
end

function Q7524704Trigger:PreTriggerIn()
    print("Q7524704Trigger - PreTriggerIn")
end

function Q7524704Trigger:LightUpTriggerIn()
    print("Q7524704Trigger - LightUpTriggerIn")
end

function Q7524704Trigger:TriggerOut()
    print("Q7524704Trigger - TriggerOut")
    actorMgr:GetActor("75247"):SafeDestroyQuestNpc(npcs.Npc21849.alias, 3)
    actorMgr:GetActor("75247"):SafeDestroyQuestNpc(npcs.Npc21850.alias, 3)
    actorMgr:GetActor("75247"):SafeDestroyQuestNpc(npcs.Npc21971.alias, 3)
    actorMgr:GetActor("75247"):RemoveLocalGadget(74019009, "1")
    this:DestroySelf()
end

return Q7524704Trigger
