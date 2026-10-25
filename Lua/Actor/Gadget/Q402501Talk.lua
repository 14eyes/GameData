require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402501Talk = class("Q402501Talk", GadgetActorProxy)
Q402501Talk.defaultAlias = "Q402501Talk"
local Q4025ClientConfig = require("Quest/Client/Q4025ClientConfig")

local this
local subIDs = Q4025ClientConfig.SubIDs
local npcs = Q4025ClientConfig.Npcs
local points = Q4025ClientConfig.Points
local datas = Q4025ClientConfig.Datas

function Q402501Talk:OnPostDataPrepare()
    print("[MainId: 4025][Trigger: Q402501Talk] OnPostDataPrepare")
    this = self
end

function Q402501Talk:OnPostComponentPrepare()
    print("[MainId: 4025][Trigger: Q402501Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402501Talk:TriggerIn()
    print("[MainId: 4025][Trigger: Q402501Talk] TriggerIn")
end

function Q402501Talk:PreTriggerIn()
    print("[MainId: 4025][Trigger: Q402501Talk] PreTriggerIn")
end

function Q402501Talk:LightUpTriggerIn()
    print("[MainId: 4025][Trigger: Q402501Talk] LightUpTriggerIn")
    actorMgr:GetActor("4025"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4025")
        actor:CreateQuestNpcById(402501, npcs.Npc1070Data.id, 0)
        actor:RequestInteraction(npcs.Npc1070Data.alias)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402501Talk:TriggerOut()
    print("[MainId: 4025][Trigger: Q402501Talk] TriggerOut")
end

return Q402501Talk
