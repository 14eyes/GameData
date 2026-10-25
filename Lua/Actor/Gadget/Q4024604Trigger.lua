require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024604Trigger = class("Q4024604Trigger", GadgetActorProxy)
Q4024604Trigger.defaultAlias = "Q4024604Trigger"
local Q40246ClientConfig = require("Quest/Client/Q40246ClientConfig")

local this
local subIDs = Q40246ClientConfig.SubIDs
local datas = Q40246ClientConfig.Datas
local npcs = Q40246ClientConfig.Npcs
local points = Q40246ClientConfig.Points

function Q4024604Trigger:OnPostDataPrepare()
    print("Q4024604Trigger - OnPostDataPrepare")
    this = self
end

function Q4024604Trigger:OnPostComponentPrepare()
    print("Q4024604Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40246)
end

function Q4024604Trigger:TriggerIn()
    print("Q4024604Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {4024604})
    this:DestroySelf()
end

function Q4024604Trigger:PreTriggerIn()
    print("Q4024604Trigger - PreTriggerIn")
end

function Q4024604Trigger:LightUpTriggerIn()
    print("Q4024604Trigger - LightUpTriggerIn")
end

function Q4024604Trigger:TriggerOut()
    print("Q4024604Trigger - TriggerOut")
end

return Q4024604Trigger
