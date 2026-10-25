require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226302Trigger = class("Q7226302Trigger", GadgetActorProxy)
Q7226302Trigger.defaultAlias = "Q7226302Trigger"
local Q72263ClientConfig = require("Quest/Client/Q72263ClientConfig")

local subIDs = Q72263ClientConfig.SubIDs
local npcs = Q72263ClientConfig.Npcs
local datas = Q72263ClientConfig.Datas

function Q7226302Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226302Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226302Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72263")
    actor:CallDelay(0, function(arg1)
        actorMgr:GetActor("72263"):EnablePlayerInput(false)
    end)

    actor:CallDelay(0.4, function(arg1)
        actorMgr:GetActor("72263"):EnablePlayerInput(true)
    end)

    actor:ShowBlackScreen(0.5, 4.5, 0.5, nil, function(arg1)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = -0.05
        local v = 1
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * v
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        local v2 = avatarForward
        v2.x = v2.x * -0.1
        v2.z = v2.z * -1
        arg1.CreateQuestNpcByIdWithPos(arg1, 7226302, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
        arg1.CallDelay(arg1, 1, function()
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, "QUEST_Message_Q7226302", false, true)

    self:DestroySelf()
end

function Q7226302Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226302Trigger
