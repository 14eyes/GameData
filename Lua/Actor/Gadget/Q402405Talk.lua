require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402405Talk = class("Q402405Talk", GadgetActorProxy)
Q402405Talk.defaultAlias = "Q402405Talk"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402405Talk:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402405Talk] OnPostDataPrepare")
    this = self
end

function Q402405Talk:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402405Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402405Talk:TriggerIn()
    print("[MainId: 4024][Trigger: Q402405Talk] TriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4024")
        actor:CreateQuestNpcById(402405, npcs.Npc13671Data.id, 0)
        actor:RequestInteraction(npcs.Npc13671Data.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402405Talk:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402405Talk] PreTriggerIn")
end

function Q402405Talk:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402405Talk] LightUpTriggerIn")
end

function Q402405Talk:TriggerOut()
    print("[MainId: 4024][Trigger: Q402405Talk] TriggerOut")
end

return Q402405Talk
