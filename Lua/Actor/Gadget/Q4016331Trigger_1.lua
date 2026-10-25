require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016331Trigger_1 = class("Q4016331Trigger_1", GadgetActorProxy)
Q4016331Trigger_1.defaultAlias = "Q4016331Trigger_1"
local Q40163ClientConfig = require("Quest/Client/Q40163ClientConfig")

local this
local subIDs = Q40163ClientConfig.SubIDs
local datas = Q40163ClientConfig.Datas
local npcs = Q40163ClientConfig.Npcs
local points = Q40163ClientConfig.Points

function Q4016331Trigger_1:OnPostDataPrepare()
    print("Q4016331Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q4016331Trigger_1:OnPostComponentPrepare()
    print("Q4016331Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40163)
end

function Q4016331Trigger_1:TriggerIn()
    print("Q4016331Trigger_1 - TriggerIn")
    actorUtils.FinishQuestID(false, 4016331)
    this:DestroySelf()
end

function Q4016331Trigger_1:PreTriggerIn()
    print("Q4016331Trigger_1 - PreTriggerIn")
end

function Q4016331Trigger_1:LightUpTriggerIn()
    print("Q4016331Trigger_1 - LightUpTriggerIn")
end

function Q4016331Trigger_1:TriggerOut()
    print("Q4016331Trigger_1 - TriggerOut")
end

return Q4016331Trigger_1
