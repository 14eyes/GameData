require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19028Trigger2 = class("Q19028Trigger2", GadgetActorProxy)
Q19028Trigger2.defaultAlias = "Q19028Trigger2"
local Q19028ClientConfig = require("Quest/Client/Q19028ClientConfig")

local subIDs = Q19028ClientConfig.SubIDs
local npcs = Q19028ClientConfig.Npcs
local datas = Q19028ClientConfig.Datas

function Q19028Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19028Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19028Trigger2:TriggerIn()
    print("TriggerIn")
end

function Q19028Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19028Trigger2
