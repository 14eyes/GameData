require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302224_TriggerIn_2 = class("Q302224_TriggerIn_2", GadgetActorProxy)
Q302224_TriggerIn_2.defaultAlias = "Q302224_TriggerIn_2"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local gadgets = Q3022ClientConfig.Gadgets
local datas = Q3022ClientConfig.Datas

function Q302224_TriggerIn_2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302224_TriggerIn_2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(80, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302224_TriggerIn_2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3022"):ShowBlackScreenWithDialogText(0.5, 3, 0, function(arg1)
        arg1:TransmitPlayerWithTextByQuestId(302224, 1, nil, 0, nil, function(arg1)
            actorMgr:GetActor("3022"):ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
        end)
    end, nil, nil, 0, false, true)

    self:DestroySelf()
end

function Q302224_TriggerIn_2:TriggerOut()
    print("TriggerOut")
end

return Q302224_TriggerIn_2
