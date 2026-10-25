require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7051701_TriggerIn = class("Q7051701_TriggerIn", GadgetActorProxy)
Q7051701_TriggerIn.defaultAlias = "Q7051701_TriggerIn"
local Q70517ClientConfig = require("Quest/Client/Q70517ClientConfig")

local subIDs = Q70517ClientConfig.SubIDs
local npcs = Q70517ClientConfig.Npcs
local datas = Q70517ClientConfig.Datas

function Q7051701_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7051701_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7051701_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70517"):RequestInteraction(npcs.Npc30221Data.alias)
    self:DestroySelf()
end

function Q7051701_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q7051701_TriggerIn
