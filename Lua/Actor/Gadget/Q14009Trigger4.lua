require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger4 = class("Q14009Trigger4", GadgetActorProxy)
Q14009Trigger4.defaultAlias = "Q14009Trigger4"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger4:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger4] OnPostDataPrepare")
    this = self
end

function Q14009Trigger4:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger4:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger4] TriggerIn")
end

function Q14009Trigger4:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger4] PreTriggerIn")
end

function Q14009Trigger4:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger4] LightUpTriggerIn")
end

function Q14009Trigger4:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger4] TriggerOut")
    actorMgr:GetActor("14009"):GetQuestNpcActor(npcs.Npc1076Data.alias):DisableInteeHeadCtrl(false)
    local actor = actorMgr:GetActor("14009")
    actor:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
    if actor:GetQuestGlobalVar(402501) == 0 then
        local v = actorMgr:GetActor("14009")
        v:DestroyQuestNpcActor(npcs.Npc13789Data.alias, 3)
        v:RemoveLocalGadget(70711239, "1")
        v:RemoveLocalGadget(70711239, "2")
        v:RemoveLocalGadget(70710776, "3")
    end

    this:DestroySelf()
end

return Q14009Trigger4
