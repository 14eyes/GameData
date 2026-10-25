require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40022Trigger1 = class("Q40022Trigger1", GadgetActorProxy)
Q40022Trigger1.defaultAlias = "Q40022Trigger1"
local Q40022ClientConfig = require("Quest/Client/Q40022ClientConfig")

local mainID = Q40022ClientConfig.MainID
local actorAlias = Q40022ClientConfig.ActorAlias
local subIDs = Q40022ClientConfig.SubIDs
local npcs = Q40022ClientConfig.Npcs
local gadgets = Q40022ClientConfig.Gadgets
local datas = Q40022ClientConfig.Datas

function Q40022Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40022Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40022Trigger1:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4002207)
    self:DestroySelf()
end

function Q40022Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q40022Trigger1
