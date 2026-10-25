require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7214403Trigger = class("Q7214403Trigger", GadgetActorProxy)
Q7214403Trigger.defaultAlias = "Q7214403Trigger"
local Q72144ClientConfig = require("Quest/Client/Q72144ClientConfig")

local mainID = Q72144ClientConfig.MainID
local actorAlias = Q72144ClientConfig.ActorAlias
local subIDs = Q72144ClientConfig.SubIDs
local npcs = Q72144ClientConfig.Npcs
local datas = Q72144ClientConfig.Datas

function Q7214403Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7214403Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3.5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7214403Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):ShowBlackScreen(0.5, 1, 0.5, self.CreateGH, self.RequestAS, nil, "")
    self:DestroySelf()
end

function Q7214403Trigger:TriggerOut()
    print("TriggerOut")
end

function Q7214403Trigger:CreateGH()
    print("CreateGH")
    actorMgr:GetActor(actorAlias):CreateQuestNpcById(7214403, npcs.Npc308801Data.id, 0)
end

function Q7214403Trigger:RequestAS()
    print("RequestAS")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc20260Data.alias)
end

return Q7214403Trigger
