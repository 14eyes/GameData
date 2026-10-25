require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q760033401trigger = class("Q760033401trigger", GadgetActorProxy)
Q760033401trigger.defaultAlias = "Q760033401trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q760033401trigger:OnPostDataPrepare()
    print("Q760033401trigger - OnPostDataPrepare")
    this = self
end

function Q760033401trigger:OnPostComponentPrepare()
    print("Q760033401trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 7, 6, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q760033401trigger:TriggerIn()
    print("Q760033401trigger - TriggerIn")
    local actor = actorMgr:GetActor("76003")
    local v = actorMgr:GetActor("76003")
    local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    v:NpcRunToTask(questNpcActor, {x = 3274.948, y = 406.701, z = 9908.792}, function(arg1)
        actorMgr:CreateActorWithPos("Q7600334Tigger", "Actor/Gadget/Q7600334Tigger", 70900002, 0, points._Q7600334TiggerPoint_.pos, points._Q7600334TiggerPoint_.rot, true, false, 3)
        this:DestroySelf()
    end, nil, nil, nil)
end

function Q760033401trigger:PreTriggerIn()
    print("Q760033401trigger - PreTriggerIn")
end

function Q760033401trigger:LightUpTriggerIn()
    print("Q760033401trigger - LightUpTriggerIn")
end

function Q760033401trigger:TriggerOut()
    print("Q760033401trigger - TriggerOut")
end

return Q760033401trigger
