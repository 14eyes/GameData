require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302222_TriggerIn = class("Q302222_TriggerIn", GadgetActorProxy)
Q302222_TriggerIn.defaultAlias = "Q302222_TriggerIn"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local gadgets = Q3022ClientConfig.Gadgets
local datas = Q3022ClientConfig.Datas

function Q302222_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302222_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(100, 200, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302222_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3022"):TransmitPlayerWithDialogTextByQuestId(302222, 1, nil, 0)
    self:DestroySelf()
end

function Q302222_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302222_TriggerIn
