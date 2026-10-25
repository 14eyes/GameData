require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402510Talk = class("Q402510Talk", GadgetActorProxy)
Q402510Talk.defaultAlias = "Q402510Talk"
local Q4025ClientConfig = require("Quest/Client/Q4025ClientConfig")

local this
local subIDs = Q4025ClientConfig.SubIDs
local npcs = Q4025ClientConfig.Npcs
local points = Q4025ClientConfig.Points
local datas = Q4025ClientConfig.Datas

function Q402510Talk:OnPostDataPrepare()
    print("[MainId: 4025][Trigger: Q402510Talk] OnPostDataPrepare")
    this = self
end

function Q402510Talk:OnPostComponentPrepare()
    print("[MainId: 4025][Trigger: Q402510Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402510Talk:TriggerIn()
    print("[MainId: 4025][Trigger: Q402510Talk] TriggerIn")
end

function Q402510Talk:PreTriggerIn()
    print("[MainId: 4025][Trigger: Q402510Talk] PreTriggerIn")
end

function Q402510Talk:LightUpTriggerIn()
    print("[MainId: 4025][Trigger: Q402510Talk] LightUpTriggerIn")
    actorMgr:GetActor("4025"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4025")
        actor:CreateQuestNpcById(402510, npcs.Npc1076Data.id, 0)
        actor:RequestInteraction(npcs.Npc1076Data.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402510Talk:TriggerOut()
    print("[MainId: 4025][Trigger: Q402510Talk] TriggerOut")
end

return Q402510Talk
