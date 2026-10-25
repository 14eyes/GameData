require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20020Trigger = class("Q20020Trigger", GadgetActorProxy)
Q20020Trigger.defaultAlias = "Q20020Trigger"
local Q20020ClientConfig = require("Quest/Client/Q20020ClientConfig")

local subIDs = Q20020ClientConfig.SubIDs
local npcs = Q20020ClientConfig.Npcs
local datas = Q20020ClientConfig.Datas

function Q20020Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q20020Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, sceneData:GetDummyPoint(3, "Q2002002"), self.TriggerIn, self.TriggerOut)
end

function Q20020Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("20020"):FinishQuestID(false, 2002030)
    self:DestroySelf()
end

function Q20020Trigger:TriggerOut()
    print("TriggerOut")
end

return Q20020Trigger
