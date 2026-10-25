require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601931Trigger = class("Q1601931Trigger", GadgetActorProxy)
Q1601931Trigger.defaultAlias = "Q1601931Trigger"
local Q16019ClientConfig = require("Quest/Client/Q16019ClientConfig")

local this
local subIDs = Q16019ClientConfig.SubIDs
local datas = Q16019ClientConfig.Datas
local npcs = Q16019ClientConfig.Npcs
local points = Q16019ClientConfig.Points

function Q1601931Trigger:OnPostDataPrepare()
    print("Q1601931Trigger - OnPostDataPrepare")
    this = self
end

function Q1601931Trigger:OnPostComponentPrepare()
    print("Q1601931Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16019)
end

function Q1601931Trigger:TriggerIn()
    print("Q1601931Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {1601931})
    this:DestroySelf()
end

function Q1601931Trigger:PreTriggerIn()
    print("Q1601931Trigger - PreTriggerIn")
end

function Q1601931Trigger:LightUpTriggerIn()
    print("Q1601931Trigger - LightUpTriggerIn")
end

function Q1601931Trigger:TriggerOut()
    print("Q1601931Trigger - TriggerOut")
end

return Q1601931Trigger
