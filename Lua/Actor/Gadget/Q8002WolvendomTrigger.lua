require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8002WolvendomTrigger = class("Q8002WolvendomTrigger", GadgetActorProxy)
Q8002WolvendomTrigger.defaultAlias = "Q8002WolvendomTrigger"
local Q8002ClientConfig = require("Quest/Client/Q8002ClientConfig")

local subIDs = Q8002ClientConfig.SubIDs
local npcs = Q8002ClientConfig.Npcs
local datas = Q8002ClientConfig.Datas

function Q8002WolvendomTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q8002WolvendomTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q8002WolvendomTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8002"):FinishQuestID(false, 800203)
    self:DestroySelf()
end

function Q8002WolvendomTrigger:TriggerOut()
    print("TriggerOut")
end

return Q8002WolvendomTrigger
