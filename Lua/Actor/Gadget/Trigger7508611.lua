require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508611 = class("Trigger7508611", GadgetActorProxy)
Trigger7508611.defaultAlias = "Trigger7508611"
local Q75086ClientConfig = require("Quest/Client/Q75086ClientConfig")

local this
local subIDs = Q75086ClientConfig.SubIDs
local npcs = Q75086ClientConfig.Npcs
local points = Q75086ClientConfig.Points

function Trigger7508611:OnPostDataPrepare()
    print("Trigger7508611 - OnPostDataPrepare")
    this = self
end

function Trigger7508611:OnPostComponentPrepare()
    print("Trigger7508611 - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75086)
end

function Trigger7508611:TriggerIn()
    print("Trigger7508611 - TriggerIn")
    actorMgr:GetActor("75086"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
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
        arg1.CreateQuestNpcByIdWithPos(arg1, 7508609, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
        arg1.CallDelay(arg1, 1, function()
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, 0, false, true)
end

function Trigger7508611:PreTriggerIn()
    print("Trigger7508611 - PreTriggerIn")
end

function Trigger7508611:LightUpTriggerIn()
    print("Trigger7508611 - LightUpTriggerIn")
end

function Trigger7508611:TriggerOut()
    print("Trigger7508611 - TriggerOut")
end

return Trigger7508611
