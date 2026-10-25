require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8002ChurchTrigger = class("Q8002ChurchTrigger", GadgetActorProxy)
Q8002ChurchTrigger.defaultAlias = "Q8002ChurchTrigger"
local Q8002ClientConfig = require("Quest/Client/Q8002ClientConfig")

local subIDs = Q8002ClientConfig.SubIDs
local npcs = Q8002ClientConfig.Npcs
local datas = Q8002ClientConfig.Datas

function Q8002ChurchTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q8002ChurchTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q8002ChurchTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8002"):FinishQuestID(false, 800201)
    self:DestroySelf()
end

function Q8002ChurchTrigger:TriggerOut()
    print("TriggerOut")
end

return Q8002ChurchTrigger
