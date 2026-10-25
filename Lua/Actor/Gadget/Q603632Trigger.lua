require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603632Trigger = class("Q603632Trigger", GadgetActorProxy)
Q603632Trigger.defaultAlias = "Q603632Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603632Trigger:OnPostDataPrepare()
    print("Q603632Trigger - OnPostDataPrepare")
    this = self
end

function Q603632Trigger:OnPostComponentPrepare()
    print("Q603632Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 8, 19, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603632Trigger:TriggerIn()
    print("Q603632Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {603632})
    this:DestroySelf()
end

function Q603632Trigger:PreTriggerIn()
    print("Q603632Trigger - PreTriggerIn")
end

function Q603632Trigger:LightUpTriggerIn()
    print("Q603632Trigger - LightUpTriggerIn")
end

function Q603632Trigger:TriggerOut()
    print("Q603632Trigger - TriggerOut")
end

return Q603632Trigger
