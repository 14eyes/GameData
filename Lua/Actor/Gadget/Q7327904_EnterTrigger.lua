require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7327904_EnterTrigger = class("Q7327904_EnterTrigger", GadgetActorProxy)
Q7327904_EnterTrigger.defaultAlias = "Q7327904_EnterTrigger"
local Q73279ClientConfig = require("Quest/Client/Q73279ClientConfig")

local this
local subIDs = Q73279ClientConfig.SubIDs
local npcs = Q73279ClientConfig.Npcs
local datas = Q73279ClientConfig.Datas

function Q7327904_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7327904_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7327904_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73279"):ShowBlackScreenWithDialogText(0.5, 1, 0, function(arg1)
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
        arg1.CreateQuestNpcByIdWithPos(arg1, 7327904, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
        arg1.CallDelay(arg1, 1, function()
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, 0, false, true)
end

function Q7327904_EnterTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7327904_EnterTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7327904_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7327904_EnterTrigger
