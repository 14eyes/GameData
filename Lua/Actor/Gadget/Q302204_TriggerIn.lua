require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302204_TriggerIn = class("Q302204_TriggerIn", GadgetActorProxy)
Q302204_TriggerIn.defaultAlias = "Q302204_TriggerIn"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local gadgets = Q3022ClientConfig.Gadgets
local datas = Q3022ClientConfig.Datas

function Q302204_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302204_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(70, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302204_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3022"):ShowBlackScreenWithDialogText(0.5, 3, 0, function(arg1)
        actorMgr:GetActor("3022"):TransmitPlayerWithDialogTextByQuestId(302236, 1, nil, 0)
    end, nil, nil, 0, false, true)

    self:DestroySelf()
end

function Q302204_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302204_TriggerIn
