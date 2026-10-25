require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502920Trigger = class("Q502920Trigger", GadgetActorProxy)
Q502920Trigger.defaultAlias = "Q502920Trigger"
local Q5029ClientConfig = require("Quest/Client/Q5029ClientConfig")

local this
local subIDs = Q5029ClientConfig.SubIDs
local datas = Q5029ClientConfig.Datas
local npcs = Q5029ClientConfig.Npcs
local points = Q5029ClientConfig.Points

function Q502920Trigger:OnPostDataPrepare()
    print("Q502920Trigger - OnPostDataPrepare")
    this = self
end

function Q502920Trigger:OnPostComponentPrepare()
    print("Q502920Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5029)
end

function Q502920Trigger:TriggerIn()
    print("Q502920Trigger - TriggerIn")
    local actor = actorMgr:GetActor("5029")
    actor.ActionSafeCall(actor, function(arg1)
        if actor:GetQuestVar(502920, 1) == 0 then
            actorMgr:GetActor("5029"):QuestNarratorTask(datas.Narrator502923, nil)
            actorMgr:GetActor("5029"):SetQuestVarByMainId(1, 1)
            actorMgr:GetActor("5029"):EnterSceneLookCamera({x = -1827.042, y = 143.216, z = 9458.14}, 0, 3, false, false)
            this:DestroySelf()
        else
            this:DestroySelf()
        end
    end)
end

function Q502920Trigger:PreTriggerIn()
    print("Q502920Trigger - PreTriggerIn")
end

function Q502920Trigger:LightUpTriggerIn()
    print("Q502920Trigger - LightUpTriggerIn")
end

function Q502920Trigger:TriggerOut()
    print("Q502920Trigger - TriggerOut")
end

return Q502920Trigger
