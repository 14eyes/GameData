require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302203_TriggerIn = class("Q302203_TriggerIn", GadgetActorProxy)
Q302203_TriggerIn.defaultAlias = "Q302203_TriggerIn"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local gadgets = Q3022ClientConfig.Gadgets
local datas = Q3022ClientConfig.Datas

function Q302203_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302203_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 22, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302203_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3022"):RequestInteraction(npcs.Npc12808Data.alias)
    self:DestroySelf()
end

function Q302203_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302203_TriggerIn
