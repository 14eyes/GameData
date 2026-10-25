require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024504Trigger = class("Q4024504Trigger", GadgetActorProxy)
Q4024504Trigger.defaultAlias = "Q4024504Trigger"
local Q40245ClientConfig = require("Quest/Client/Q40245ClientConfig")

local this
local subIDs = Q40245ClientConfig.SubIDs
local datas = Q40245ClientConfig.Datas
local npcs = Q40245ClientConfig.Npcs
local points = Q40245ClientConfig.Points

function Q4024504Trigger:OnPostDataPrepare()
    print("Q4024504Trigger - OnPostDataPrepare")
    this = self
end

function Q4024504Trigger:OnPostComponentPrepare()
    print("Q4024504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40245)
end

function Q4024504Trigger:TriggerIn()
    print("Q4024504Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {4024504})
    this:DestroySelf()
end

function Q4024504Trigger:PreTriggerIn()
    print("Q4024504Trigger - PreTriggerIn")
end

function Q4024504Trigger:LightUpTriggerIn()
    print("Q4024504Trigger - LightUpTriggerIn")
end

function Q4024504Trigger:TriggerOut()
    print("Q4024504Trigger - TriggerOut")
end

return Q4024504Trigger
