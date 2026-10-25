require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701912Trigger_1 = class("Q701912Trigger_1", GadgetActorProxy)
Q701912Trigger_1.defaultAlias = "Q701912Trigger_1"
local Q7019ClientConfig = require("Quest/Client/Q7019ClientConfig")

local this
local subIDs = Q7019ClientConfig.SubIDs
local datas = Q7019ClientConfig.Datas
local npcs = Q7019ClientConfig.Npcs
local points = Q7019ClientConfig.Points

function Q701912Trigger_1:OnPostDataPrepare()
    print("Q701912Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q701912Trigger_1:OnPostComponentPrepare()
    print("Q701912Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7019)
end

function Q701912Trigger_1:TriggerIn()
    print("Q701912Trigger_1 - TriggerIn")
    actorMgr:GetActor("7019"):TransmitPlayerWithQuestIdByData(701919, 1, datas.TransmitData_TimeTick, function(arg1)
        this:DestroySelf()
    end, nil, nil)
end

function Q701912Trigger_1:PreTriggerIn()
    print("Q701912Trigger_1 - PreTriggerIn")
end

function Q701912Trigger_1:LightUpTriggerIn()
    print("Q701912Trigger_1 - LightUpTriggerIn")
end

function Q701912Trigger_1:TriggerOut()
    print("Q701912Trigger_1 - TriggerOut")
end

return Q701912Trigger_1
