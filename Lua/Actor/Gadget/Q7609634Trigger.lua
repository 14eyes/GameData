require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609634Trigger = class("Q7609634Trigger", GadgetActorProxy)
Q7609634Trigger.defaultAlias = "Q7609634Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609634Trigger:OnPostDataPrepare()
    print("Q7609634Trigger - OnPostDataPrepare")
    this = self
end

function Q7609634Trigger:OnPostComponentPrepare()
    print("Q7609634Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(130, 60, 80, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609634Trigger:TriggerIn()
    print("Q7609634Trigger - TriggerIn")
end

function Q7609634Trigger:PreTriggerIn()
    print("Q7609634Trigger - PreTriggerIn")
end

function Q7609634Trigger:LightUpTriggerIn()
    print("Q7609634Trigger - LightUpTriggerIn")
end

function Q7609634Trigger:TriggerOut()
    print("Q7609634Trigger - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7609634})
    this:DestroySelf()
end

return Q7609634Trigger
