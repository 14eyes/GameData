require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10201trigger13 = class("Q10201trigger13", GadgetActorProxy)
Q10201trigger13.defaultAlias = "Q10201trigger13"
local Q10201ClientConfig = require("Quest/Client/Q10201ClientConfig")

local actor = actorMgr:GetActor(Q10201ClientConfig.ActorAlias)
function Q10201trigger13:OnPostDataPrepare() end

function Q10201trigger13:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q10201trigger13:TriggerIn()
    print("In Q10201trigger13")
    actorMgr:GetActor(Q10201ClientConfig.ActorAlias):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor(Q10201ClientConfig.ActorAlias):RequestInteraction(Q10201ClientConfig.KleeData.Klee)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q10201trigger13:TriggerOut()
    print("Out Q10201trigger13")
end

return Q10201trigger13
