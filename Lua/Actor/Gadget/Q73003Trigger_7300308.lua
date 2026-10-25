require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73003Trigger_7300308 = class("Q73003Trigger_7300308", GadgetActorProxy)
Q73003Trigger_7300308.defaultAlias = "Q73003Trigger_7300308"
local Q73003ClientConfig = require("Quest/Client/Q73003ClientConfig")

local subIDs = Q73003ClientConfig.SubIDs
local npcs = Q73003ClientConfig.Npcs
local datas = Q73003ClientConfig.Datas

function Q73003Trigger_7300308:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73003Trigger_7300308:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73003Trigger_7300308:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73003")
    actor:CallDelay(0, function(arg1)
        actorMgr:GetActor("73003"):EnablePlayerInput(false)
    end)

    actor:CallDelay(0.4, function(arg1)
        actorMgr:GetActor("73003"):EnablePlayerInput(true)
    end)

    actor:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
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
        arg1.CreateQuestNpcByIdWithPos(arg1, 7300308, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
        arg1.CallDelay(arg1, 0.2, function()
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)
end

function Q73003Trigger_7300308:TriggerOut()
    print("TriggerOut")
end

return Q73003Trigger_7300308
