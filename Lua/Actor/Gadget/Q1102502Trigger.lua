require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102502Trigger = class("Q1102502Trigger", GadgetActorProxy)
Q1102502Trigger.defaultAlias = "Q1102502Trigger"
local Q11025ClientConfig = require("Quest/Client/Q11025ClientConfig")

local mainID = Q11025ClientConfig.MainID
local actorAlias = Q11025ClientConfig.ActorAlias
local subIDs = Q11025ClientConfig.SubIDs
local npcs = Q11025ClientConfig.Npcs
local datas = Q11025ClientConfig.Datas

function Q1102502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1102502Trigger:TriggerIn()
    print("TriggerIn")
end

function Q1102502Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1102502)
end

return Q1102502Trigger
