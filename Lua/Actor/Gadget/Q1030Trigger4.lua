require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1030Trigger4 = class("Q1030Trigger4", GadgetActorProxy)
Q1030Trigger4.defaultAlias = "Q1030Trigger4"
local Q1030ClientConfig = require("Quest/Client/Q1030ClientConfig")

local subIDs = Q1030ClientConfig.SubIDs
local npcs = Q1030ClientConfig.Npcs
local datas = Q1030ClientConfig.Datas

function Q1030Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1030Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1030Trigger4:TriggerIn()
    print("TriggerIn")
    local questNpcActor_MaleCond = actorMgr:GetActor("1030"):GetQuestNpcActor_MaleCond("Npc1026", "Npc1025")
    local n = actorUtils.GetAvatarPos() - sceneData:GetDummyPoint(20129, "Q103025_MetaAvatar").pos
    questNpcActor_MaleCond:SteerToTask(n, 1, true, true)
    local actor = actorMgr:GetActor("1030")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(20129, "Q103025_MetaAvatar").pos, 0, 2, false, false)
    actor:CallDelay(2, function(arg1)
        local actor = actorMgr:GetActor("1030")
        actor:SafeDestroyQuestNpc_MaleCond("Npc1026", "Npc1025", 20129)
        actor:PlayEffect("Eff_Quest_Avatar_CoverMask", sceneData:GetDummyPoint(20129, "Q103025_MetaAvatar").pos, nil, nil, false)
        actorMgr:GetActor("Q1030Trigger4"):DestroySelf()
    end)
end

function Q1030Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q1030Trigger4
