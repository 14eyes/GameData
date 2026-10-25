require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19003TriggerBabala03 = class("Q19003TriggerBabala03", GadgetActorProxy)
Q19003TriggerBabala03.defaultAlias = "Q19003TriggerBabala03"
local Q19003ClientConfig = require("Quest/Client/Q19003ClientConfig")

local mainID = Q19003ClientConfig.MainID
local actorAlias = Q19003ClientConfig.ActorAlias
local subIDs = Q19003ClientConfig.SubIDs
local npcs = Q19003ClientConfig.Npcs
local datas = Q19003ClientConfig.Datas

function Q19003TriggerBabala03:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19003TriggerBabala03:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19003TriggerBabala03:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1900301)
    self:DestroySelf()
end

function Q19003TriggerBabala03:TriggerOut()
    print("TriggerOut")
end

return Q19003TriggerBabala03
