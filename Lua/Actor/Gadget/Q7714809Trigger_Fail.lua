require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714809Trigger_Fail = class("Q7714809Trigger_Fail", GadgetActorProxy)
Q7714809Trigger_Fail.defaultAlias = "Q7714809Trigger_Fail"
local Q77148ClientConfig = require("Quest/Client/Q77148ClientConfig")

local this
local subIDs = Q77148ClientConfig.SubIDs
local datas = Q77148ClientConfig.Datas
local npcs = Q77148ClientConfig.Npcs
local points = Q77148ClientConfig.Points

function Q7714809Trigger_Fail:OnPostDataPrepare()
    print("Q7714809Trigger_Fail - OnPostDataPrepare")
    this = self
end

function Q7714809Trigger_Fail:OnPostComponentPrepare()
    print("Q7714809Trigger_Fail - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77148)
end

function Q7714809Trigger_Fail:TriggerIn()
    print("Q7714809Trigger_Fail - TriggerIn")
    this:DestroySelf()
end

function Q7714809Trigger_Fail:PreTriggerIn()
    print("Q7714809Trigger_Fail - PreTriggerIn")
end

function Q7714809Trigger_Fail:LightUpTriggerIn()
    print("Q7714809Trigger_Fail - LightUpTriggerIn")
end

function Q7714809Trigger_Fail:TriggerOut()
    print("Q7714809Trigger_Fail - TriggerOut")
    actorUtils.FinishQuestID(true, 7714809)
end

return Q7714809Trigger_Fail
