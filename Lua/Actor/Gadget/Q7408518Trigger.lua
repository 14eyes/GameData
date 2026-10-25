require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408518Trigger = class("Q7408518Trigger", GadgetActorProxy)
Q7408518Trigger.defaultAlias = "Q7408518Trigger"
local Q74085ClientConfig = require("Quest/Client/Q74085ClientConfig")

local this
local subIDs = Q74085ClientConfig.SubIDs
local npcs = Q74085ClientConfig.Npcs
local points = Q74085ClientConfig.Points
local datas = Q74085ClientConfig.Datas

function Q7408518Trigger:OnPostDataPrepare()
    print("[MainId: 74085][Trigger: Q7408518Trigger] OnPostDataPrepare")
    this = self
end

function Q7408518Trigger:OnPostComponentPrepare()
    print("[MainId: 74085][Trigger: Q7408518Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408518Trigger:TriggerIn()
    print("[MainId: 74085][Trigger: Q7408518Trigger] TriggerIn")
    actorMgr:GetActor("74085"):ShowBlackScreenWithDialogText(0.5, 1, 0, function(arg1)
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
        arg1.CreateQuestNpcByIdWithPos(arg1, 7408518, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
        arg1.CallDelay(arg1, 1, function()
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, 0, false, true)
end

function Q7408518Trigger:PreTriggerIn()
    print("[MainId: 74085][Trigger: Q7408518Trigger] PreTriggerIn")
end

function Q7408518Trigger:LightUpTriggerIn()
    print("[MainId: 74085][Trigger: Q7408518Trigger] LightUpTriggerIn")
end

function Q7408518Trigger:TriggerOut()
    print("[MainId: 74085][Trigger: Q7408518Trigger] TriggerOut")
end

return Q7408518Trigger
