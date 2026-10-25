require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024414Trigger = class("Q4024414Trigger", GadgetActorProxy)
Q4024414Trigger.defaultAlias = "Q4024414Trigger"
local Q40244ClientConfig = require("Quest/Client/Q40244ClientConfig")

local this
local subIDs = Q40244ClientConfig.SubIDs
local datas = Q40244ClientConfig.Datas
local npcs = Q40244ClientConfig.Npcs
local points = Q40244ClientConfig.Points

function Q4024414Trigger:OnPostDataPrepare()
    print("Q4024414Trigger - OnPostDataPrepare")
    this = self
end

function Q4024414Trigger:OnPostComponentPrepare()
    print("Q4024414Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40244)
end

function Q4024414Trigger:TriggerIn()
    print("Q4024414Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {4024414})
    this:DestroySelf()
end

function Q4024414Trigger:PreTriggerIn()
    print("Q4024414Trigger - PreTriggerIn")
end

function Q4024414Trigger:LightUpTriggerIn()
    print("Q4024414Trigger - LightUpTriggerIn")
end

function Q4024414Trigger:TriggerOut()
    print("Q4024414Trigger - TriggerOut")
end

return Q4024414Trigger
