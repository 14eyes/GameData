require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q503501Trigger = class("Q503501Trigger", GadgetActorProxy)
Q503501Trigger.defaultAlias = "Q503501Trigger"
local Q5035ClientConfig = require("Quest/Client/Q5035ClientConfig")

local this
local subIDs = Q5035ClientConfig.SubIDs
local points = Q5035ClientConfig.Points

function Q503501Trigger:OnPostDataPrepare()
    print("Q503501Trigger - OnPostDataPrepare")
    this = self
end

function Q503501Trigger:OnPostComponentPrepare()
    print("Q503501Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 40, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5035)
end

function Q503501Trigger:TriggerIn()
    print("Q503501Trigger - TriggerIn")
    actorMgr:GetActor("5035"):SetQuestVarByMainId(0, 1)
    actorMgr:CreateActorWithPos("Q503501Trigger_1", "Actor/Gadget/Q503501Trigger_1", 70900002, 0, points._Q503501Trigger_1Point_.pos, points._Q503501Trigger_1Point_.rot, true, false, 3)
    this:DestroySelf()
end

function Q503501Trigger:PreTriggerIn()
    print("Q503501Trigger - PreTriggerIn")
end

function Q503501Trigger:LightUpTriggerIn()
    print("Q503501Trigger - LightUpTriggerIn")
end

function Q503501Trigger:TriggerOut()
    print("Q503501Trigger - TriggerOut")
end

return Q503501Trigger
