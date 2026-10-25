require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7900312Trigger = class("Q7900312Trigger", GadgetActorProxy)
Q7900312Trigger.defaultAlias = "Q7900312Trigger"
local Q79003ClientConfig = require("Quest/Client/Q79003ClientConfig")

local mainID = Q79003ClientConfig.MainID
local actorAlias = Q79003ClientConfig.ActorAlias
local subIDs = Q79003ClientConfig.SubIDs
local npcs = Q79003ClientConfig.Npcs
local datas = Q79003ClientConfig.Datas

function Q7900312Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7900312Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7900312Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7900312Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7900312)
end

return Q7900312Trigger
