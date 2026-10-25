require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302228_TriggerIn = class("Q302228_TriggerIn", GadgetActorProxy)
Q302228_TriggerIn.defaultAlias = "Q302228_TriggerIn"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local gadgets = Q3022ClientConfig.Gadgets
local datas = Q3022ClientConfig.Datas

function Q302228_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302228_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(100, 200, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302228_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3022"):PlayerEnterDungeonPointWithDialogs(680, 8001, 302228, 1, nil, 0, nil, function(arg1)
        actorMgr:GetActor("3022"):ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
    end)

    self:DestroySelf()
end

function Q302228_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302228_TriggerIn
