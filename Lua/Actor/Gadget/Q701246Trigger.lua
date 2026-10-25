require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701246Trigger = class("Q701246Trigger", GadgetActorProxy)
Q701246Trigger.defaultAlias = "Q701246Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701246Trigger:OnPostDataPrepare()
    print("Q701246Trigger - OnPostDataPrepare")
    this = self
end

function Q701246Trigger:OnPostComponentPrepare()
    print("Q701246Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(94.50472, 15.803563, 14.7230835, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701246Trigger:TriggerIn()
    print("Q701246Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701246})
    this:DestroySelf()
end

function Q701246Trigger:PreTriggerIn()
    print("Q701246Trigger - PreTriggerIn")
end

function Q701246Trigger:LightUpTriggerIn()
    print("Q701246Trigger - LightUpTriggerIn")
end

function Q701246Trigger:TriggerOut()
    print("Q701246Trigger - TriggerOut")
end

return Q701246Trigger
