require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402413Talk = class("Q402413Talk", GadgetActorProxy)
Q402413Talk.defaultAlias = "Q402413Talk"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402413Talk:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402413Talk] OnPostDataPrepare")
    this = self
end

function Q402413Talk:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402413Talk] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(70, 100, 60, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402413Talk:TriggerIn()
    print("[MainId: 4024][Trigger: Q402413Talk] TriggerIn")
end

function Q402413Talk:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402413Talk] PreTriggerIn")
end

function Q402413Talk:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402413Talk] LightUpTriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4024")
        actor:CreateQuestNpcById(402413, npcs.Npc1076Data.id, 0)
        actor:RequestInteraction(npcs.Npc1076Data.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402413Talk:TriggerOut()
    print("[MainId: 4024][Trigger: Q402413Talk] TriggerOut")
end

return Q402413Talk
