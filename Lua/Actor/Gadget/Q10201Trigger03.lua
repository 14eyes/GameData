require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10201trigger03 = class("Q10201trigger03", GadgetActorProxy)
Q10201trigger03.defaultAlias = "Q10201trigger03"
local Q10201ClientConfig = require("Quest/Client/Q10201ClientConfig")

local actor = actorMgr:GetActor(Q10201ClientConfig.ActorAlias)
function Q10201trigger03:OnPostDataPrepare() end

function Q10201trigger03:OnPostComponentPrepare()
    self:AddComponentTrigger(150, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q10201trigger03:TriggerIn()
    print("In Q10201trigger03")
    actorMgr:GetActor(Q10201ClientConfig.ActorAlias):NarratorOnlyTaskByData(Q10201ClientConfig.NarratorData2, nil)
    self:DestroySelf()
end

function Q10201trigger03:TriggerOut()
    print("Out Q10201trigger03")
end

return Q10201trigger03
