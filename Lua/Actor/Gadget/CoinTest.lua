require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local CoinTest = class("CoinTest", GadgetActorProxy)
CoinTest.defaultAlias = "CoinTest"
local n = 0
local v = 0
local Q406Config = require("Actor/Quest/Q406/Q406Config")

function CoinTest:OnPostDataPrepare()
    n = 0
    v = 0
end

function CoinTest:OnPostComponentPrepare()
    self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function CoinTest:TriggerIn()
    Q406Config.CoinNum = Q406Config.CoinNum + 1
    self:CountNumUIUpdate(Q406Config.CoinNum)
    local pos = self:GetPos()
    self:PlayEffect("Eff_FlyRace_Marker_Active_AS", pos)
    self:DestroySelf()
end

function CoinTest:TriggerOut()
    v = v + 1
end

return CoinTest
