require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302233_TriggerIn_2 = class("Q302233_TriggerIn_2", GadgetActorProxy)
Q302233_TriggerIn_2.defaultAlias = "Q302233_TriggerIn_2"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local gadgets = Q3022ClientConfig.Gadgets
local datas = Q3022ClientConfig.Datas

function Q302233_TriggerIn_2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302233_TriggerIn_2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(100, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302233_TriggerIn_2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302233)
    self:DestroySelf()
end

function Q302233_TriggerIn_2:TriggerOut()
    print("TriggerOut")
end

return Q302233_TriggerIn_2
