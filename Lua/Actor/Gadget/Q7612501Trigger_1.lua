require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612501Trigger_1 = class("Q7612501Trigger_1", GadgetActorProxy)
Q7612501Trigger_1.defaultAlias = "Q7612501Trigger_1"
local Q76125ClientConfig = require("Quest/Client/Q76125ClientConfig")

local this
local subIDs = Q76125ClientConfig.SubIDs
local datas = Q76125ClientConfig.Datas
local npcs = Q76125ClientConfig.Npcs
local points = Q76125ClientConfig.Points

function Q7612501Trigger_1:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Q7612501Trigger_1:OnPostDataPrepare()
    print("Q7612501Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7612501Trigger_1:OnPostComponentPrepare()
    print("Q7612501Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76125)
end

function Q7612501Trigger_1:TriggerIn()
    print("Q7612501Trigger_1 - TriggerIn")
    actorUtils.FinishQuestID(false, 7612501)
    this:ActorDestroy("Q7612501Trigger")
    this:DestroySelf()
end

function Q7612501Trigger_1:PreTriggerIn()
    print("Q7612501Trigger_1 - PreTriggerIn")
end

function Q7612501Trigger_1:LightUpTriggerIn()
    print("Q7612501Trigger_1 - LightUpTriggerIn")
end

function Q7612501Trigger_1:TriggerOut()
    print("Q7612501Trigger_1 - TriggerOut")
end

return Q7612501Trigger_1
