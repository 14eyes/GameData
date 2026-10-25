require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7151901Trigger = class("Q7151901Trigger", GadgetActorProxy)
Q7151901Trigger.defaultAlias = "Q7151901Trigger"
local Q71519ClientConfig = require("Quest/Client/Q71519ClientConfig")

local this
local subIDs = Q71519ClientConfig.SubIDs

function Q7151901Trigger:HuixingAddMark()
    print("HuixingAddMark")
    local actor = actorMgr:GetActor("Npc2434")
    if actor ~= nil then
        if actor ~= actorMgr.dummyActor then
            print("Daily Huixing exist")
            actor:AddGeneralMark("UI_NPCTopIcon_Ship")
            actorMgr:GetActor("71519"):SetQuestVarByMainId(0, 1)
        end
    end

    this:CheckNpcExist()
end

function Q7151901Trigger:CheckNpcExist()
    print("CheckNpcExist")
    local actor = actorMgr:GetActor("71519")
    actor.CallDelay(actor, 2.5, function(arg1)
        if actor:GetQuestVar(7151901, 0) == 0 then
            this:HuixingAddMark()
        end
    end)
end

function Q7151901Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7151901Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(3.914204, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7151901Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71519"):SetQuestVarByMainId(0, 0)
    this:HuixingAddMark()
end

function Q7151901Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7151901Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7151901Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("71519"):SetQuestVarByMainId(0, 2)
end

return Q7151901Trigger
