require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612501Trigger = class("Q7612501Trigger", GadgetActorProxy)
Q7612501Trigger.defaultAlias = "Q7612501Trigger"
local Q76125ClientConfig = require("Quest/Client/Q76125ClientConfig")

local this
local subIDs = Q76125ClientConfig.SubIDs
local datas = Q76125ClientConfig.Datas
local npcs = Q76125ClientConfig.Npcs
local points = Q76125ClientConfig.Points

function Q7612501Trigger:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Q7612501Trigger:OnPostDataPrepare()
    print("Q7612501Trigger - OnPostDataPrepare")
    this = self
end

function Q7612501Trigger:OnPostComponentPrepare()
    print("Q7612501Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 3, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76125)
end

function Q7612501Trigger:TriggerIn()
    print("Q7612501Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612501)
    this:ActorDestroy("Q7612501Trigger_1")
    this:DestroySelf()
end

function Q7612501Trigger:PreTriggerIn()
    print("Q7612501Trigger - PreTriggerIn")
end

function Q7612501Trigger:LightUpTriggerIn()
    print("Q7612501Trigger - LightUpTriggerIn")
end

function Q7612501Trigger:TriggerOut()
    print("Q7612501Trigger - TriggerOut")
end

return Q7612501Trigger
