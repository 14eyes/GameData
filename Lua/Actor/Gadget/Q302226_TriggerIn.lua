require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302226_TriggerIn = class("Q302226_TriggerIn", GadgetActorProxy)
Q302226_TriggerIn.defaultAlias = "Q302226_TriggerIn"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local gadgets = Q3022ClientConfig.Gadgets
local datas = Q3022ClientConfig.Datas

function Q302226_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302226_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(100, 200, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302226_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3022"):PlayerEnterDungeonPointWithDialogs(680, 8001, 302226, 1, nil, 0, nil, function(arg1)
        actorMgr:GetActor("3022"):ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
    end)

    self:DestroySelf()
end

function Q302226_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302226_TriggerIn
