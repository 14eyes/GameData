require("Actor/ActorCommon")
local MQ301 = require("Actor/Quest/MQ301")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Test301 = class("Test301", NpcActorProxy)
Test301.defaultAlias = "Test301"
local testData = require("Actor/Quest/Q301/Config/Q301Config").TestData

function Test301:Start()
    print("start!Test301")
    self:SetPos(testData.bornPos)
    print(testData.bornPos)
    self:TurnTo(M.Euler2DirXZ(self.bornDir))
    self:Standby()
end

function Test301:OnDestroy()
    print("test " .. self.configID .. " destroied")
end

return Test301
