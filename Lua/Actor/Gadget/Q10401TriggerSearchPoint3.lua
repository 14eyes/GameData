require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10401TriggerSearchPoint3 = class("Q10401TriggerSearchPoint3", GadgetActorProxy)
Q10401TriggerSearchPoint3.defaultAlias = "Q10401TriggerSearchPoint3"
local Q10401ClientConfig = require("Quest/Client/Q10401ClientConfig")

local mainID = Q10401ClientConfig.MainID
local actorAlias = Q10401ClientConfig.ActorAlias
local subIDs = Q10401ClientConfig.SubIDs
local npcs = Q10401ClientConfig.Npcs
local datas = Q10401ClientConfig.Datas

function Q10401TriggerSearchPoint3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q10401TriggerSearchPoint3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q10401TriggerSearchPoint3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1040114)
end

function Q10401TriggerSearchPoint3:TriggerOut()
    print("TriggerOut")
end

return Q10401TriggerSearchPoint3
