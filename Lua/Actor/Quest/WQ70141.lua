require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70141 = class("Quest70141", QuestActorProxy)
Quest70141.defaultAlias = "Quest70141"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70141:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70141:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7014109"] = self.OnSubStart7014109,
        ["7014118"] = self.OnSubStart7014118,
        ["7014110"] = self.OnSubStart7014110,
        ["7014119"] = self.OnSubStart7014119,
        ["7014111"] = self.OnSubStart7014111,
        ["7014120"] = self.OnSubStart7014120,
        ["7014106"] = self.OnSubStart7014106,
        ["7014108"] = self.OnSubStart7014108,
        ["7014121"] = self.OnSubStart7014121,
        ["7014124"] = self.OnSubStart7014124,
        ["7014101"] = self.OnSubStart7014101,
        ["7014102"] = self.OnSubStart7014102,
        ["7014125"] = self.OnSubStart7014125,
        ["7014126"] = self.OnSubStart7014126,
        ["7014130"] = self.OnSubStart7014130,
        ["7014127"] = self.OnSubStart7014127,
        ["7014104"] = self.OnSubStart7014104,
        ["7014132"] = self.OnSubStart7014132,
        ["7014133"] = self.OnSubStart7014133,
        ["7014135"] = self.OnSubStart7014135,
        ["7014134"] = self.OnSubStart7014134,
        ["7014116"] = self.OnSubStart7014116,
        ["7014107"] = self.OnSubStart7014107,
        ["7014114"] = self.OnSubStart7014114,
        ["7014136"] = self.OnSubStart7014136,
        ["7014137"] = self.OnSubStart7014137,
        ["7014138"] = self.OnSubStart7014138,
        ["7014139"] = self.OnSubStart7014139,
        ["7014117"] = self.OnSubStart7014117,
        ["7014128"] = self.OnSubStart7014128,
        ["7014131"] = self.OnSubStart7014131,
        ["7014129"] = self.OnSubStart7014129,
        ["7014113"] = self.OnSubStart7014113,
        ["7014140"] = self.OnSubStart7014140,
        ["7014141"] = self.OnSubStart7014141,
        ["7014142"] = self.OnSubStart7014142,
        ["7014143"] = self.OnSubStart7014143,
        ["7014103"] = self.OnSubStart7014103,
        ["7014144"] = self.OnSubStart7014144,
        ["7014105"] = self.OnSubStart7014105,
        ["7014122"] = self.OnSubStart7014122,
        ["7014123"] = self.OnSubStart7014123,
        ["7014115"] = self.OnSubStart7014115,
        ["7014112"] = self.OnSubStart7014112
    }
end

function Quest70141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7014109"] = self.OnSubFinish7014109,
        ["7014118"] = self.OnSubFinish7014118,
        ["7014110"] = self.OnSubFinish7014110,
        ["7014119"] = self.OnSubFinish7014119,
        ["7014111"] = self.OnSubFinish7014111,
        ["7014120"] = self.OnSubFinish7014120,
        ["7014106"] = self.OnSubFinish7014106,
        ["7014108"] = self.OnSubFinish7014108,
        ["7014121"] = self.OnSubFinish7014121,
        ["7014124"] = self.OnSubFinish7014124,
        ["7014101"] = self.OnSubFinish7014101,
        ["7014102"] = self.OnSubFinish7014102,
        ["7014125"] = self.OnSubFinish7014125,
        ["7014126"] = self.OnSubFinish7014126,
        ["7014130"] = self.OnSubFinish7014130,
        ["7014127"] = self.OnSubFinish7014127,
        ["7014104"] = self.OnSubFinish7014104,
        ["7014132"] = self.OnSubFinish7014132,
        ["7014133"] = self.OnSubFinish7014133,
        ["7014135"] = self.OnSubFinish7014135,
        ["7014134"] = self.OnSubFinish7014134,
        ["7014116"] = self.OnSubFinish7014116,
        ["7014107"] = self.OnSubFinish7014107,
        ["7014114"] = self.OnSubFinish7014114,
        ["7014136"] = self.OnSubFinish7014136,
        ["7014137"] = self.OnSubFinish7014137,
        ["7014138"] = self.OnSubFinish7014138,
        ["7014139"] = self.OnSubFinish7014139,
        ["7014117"] = self.OnSubFinish7014117,
        ["7014128"] = self.OnSubFinish7014128,
        ["7014131"] = self.OnSubFinish7014131,
        ["7014129"] = self.OnSubFinish7014129,
        ["7014113"] = self.OnSubFinish7014113,
        ["7014140"] = self.OnSubFinish7014140,
        ["7014141"] = self.OnSubFinish7014141,
        ["7014142"] = self.OnSubFinish7014142,
        ["7014143"] = self.OnSubFinish7014143,
        ["7014103"] = self.OnSubFinish7014103,
        ["7014144"] = self.OnSubFinish7014144,
        ["7014105"] = self.OnSubFinish7014105,
        ["7014122"] = self.OnSubFinish7014122,
        ["7014123"] = self.OnSubFinish7014123,
        ["7014115"] = self.OnSubFinish7014115,
        ["7014112"] = self.OnSubFinish7014112
    }
end

function Quest70141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7014109"] = self.OnSubFailed7014109,
        ["7014118"] = self.OnSubFailed7014118,
        ["7014110"] = self.OnSubFailed7014110,
        ["7014119"] = self.OnSubFailed7014119,
        ["7014111"] = self.OnSubFailed7014111,
        ["7014120"] = self.OnSubFailed7014120,
        ["7014106"] = self.OnSubFailed7014106,
        ["7014108"] = self.OnSubFailed7014108,
        ["7014121"] = self.OnSubFailed7014121,
        ["7014124"] = self.OnSubFailed7014124,
        ["7014101"] = self.OnSubFailed7014101,
        ["7014102"] = self.OnSubFailed7014102,
        ["7014125"] = self.OnSubFailed7014125,
        ["7014126"] = self.OnSubFailed7014126,
        ["7014130"] = self.OnSubFailed7014130,
        ["7014127"] = self.OnSubFailed7014127,
        ["7014104"] = self.OnSubFailed7014104,
        ["7014132"] = self.OnSubFailed7014132,
        ["7014133"] = self.OnSubFailed7014133,
        ["7014135"] = self.OnSubFailed7014135,
        ["7014134"] = self.OnSubFailed7014134,
        ["7014116"] = self.OnSubFailed7014116,
        ["7014107"] = self.OnSubFailed7014107,
        ["7014114"] = self.OnSubFailed7014114,
        ["7014136"] = self.OnSubFailed7014136,
        ["7014137"] = self.OnSubFailed7014137,
        ["7014138"] = self.OnSubFailed7014138,
        ["7014139"] = self.OnSubFailed7014139,
        ["7014117"] = self.OnSubFailed7014117,
        ["7014128"] = self.OnSubFailed7014128,
        ["7014131"] = self.OnSubFailed7014131,
        ["7014129"] = self.OnSubFailed7014129,
        ["7014113"] = self.OnSubFailed7014113,
        ["7014140"] = self.OnSubFailed7014140,
        ["7014141"] = self.OnSubFailed7014141,
        ["7014142"] = self.OnSubFailed7014142,
        ["7014143"] = self.OnSubFailed7014143,
        ["7014103"] = self.OnSubFailed7014103,
        ["7014144"] = self.OnSubFailed7014144,
        ["7014105"] = self.OnSubFailed7014105,
        ["7014122"] = self.OnSubFailed7014122,
        ["7014123"] = self.OnSubFailed7014123,
        ["7014115"] = self.OnSubFailed7014115,
        ["7014112"] = self.OnSubFailed7014112
    }
end

function Quest70141:Start()
    print("Start")
end

function Quest70141:OnDestroy()
    print("OnDestroy")
end

function Quest70141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70141:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70141:CSFinish7014118()
    print("CSFinish7014118")
    self:FinishQuestID(false, 7014118)
end

function Quest70141:CSFinish7014119()
    print("CSFinish7014119")
    self:FinishQuestID(false, 7014119)
end

function Quest70141:CSFinish7014120()
    print("CSFinish7014120")
    self:FinishQuestID(false, 7014120)
end

function Quest70141:CSFinish7014122()
    print("CSFinish7014122")
    self:FinishQuestID(false, 7014122)
end

function Quest70141:CSFinish7014123()
    print("CSFinish7014123")
    self:FinishQuestID(false, 7014123)
end

function Quest70141:CSFinish7014124()
    print("CSFinish7014124")
    self:FinishQuestID(false, 7014124)
end

function Quest70141:CSFinish7014126()
    print("CSFinish7014126")
    self:FinishQuestID(false, 7014126)
end

function Quest70141:CSFinish7014127()
    print("CSFinish7014127")
    self:FinishQuestID(false, 7014127)
end

function Quest70141:CSFinish7014128()
    print("CSFinish7014128")
    self:FinishQuestID(false, 7014128)
end

function Quest70141:CSPlay7014122()
    print("CSPlay7014122")
    self:PlayCutsceneIndex("7014122", self.CSFinish7014122, nil, nil, false)
end

function Quest70141:CSPlayBlackScreen7014122()
    print("CSPlayBlackScreen7014122")
    self:ShowBlackScreen(0, 1, 0, self.CSPlay7014122, nil, nil, "")
end

function Quest70141:Reminder7014108()
    print("Reminder7014108")
    self:NarratorOnlyTask(datas.NarratorTable_2, nil, "")
end

function Quest70141:OnSubStart7014109(arg1)
    print("OnSubStart7014109")
end

function Quest70141:OnSubFinish7014109(arg1)
    print("OnSubFinish7014109")
end

function Quest70141:OnSubFailed7014109(arg1)
    print("OnSubFailed7014109")
end

function Quest70141:OnSubStart7014118(arg1)
    print("OnSubStart7014118")
    self:PlayCutsceneIndex("7014118", self.CSFinish7014118, nil, nil, false)
end

function Quest70141:OnSubFinish7014118(arg1)
    print("OnSubFinish7014118")
end

function Quest70141:OnSubFailed7014118(arg1)
    print("OnSubFailed7014118")
end

function Quest70141:OnSubStart7014110(arg1)
    print("OnSubStart7014110")
end

function Quest70141:OnSubFinish7014110(arg1)
    print("OnSubFinish7014110")
end

function Quest70141:OnSubFailed7014110(arg1)
    print("OnSubFailed7014110")
end

function Quest70141:OnSubStart7014119(arg1)
    print("OnSubStart7014119")
    self:PlayCutsceneIndex("7014119", self.CSFinish7014119, nil, nil, false)
end

function Quest70141:OnSubFinish7014119(arg1)
    print("OnSubFinish7014119")
end

function Quest70141:OnSubFailed7014119(arg1)
    print("OnSubFailed7014119")
end

function Quest70141:OnSubStart7014111(arg1)
    print("OnSubStart7014111")
end

function Quest70141:OnSubFinish7014111(arg1)
    print("OnSubFinish7014111")
end

function Quest70141:OnSubFailed7014111(arg1)
    print("OnSubFailed7014111")
end

function Quest70141:OnSubStart7014120(arg1)
    print("OnSubStart7014120")
    self:PlayCutsceneIndex("7014120", self.CSFinish7014120, nil, nil, false)
end

function Quest70141:OnSubFinish7014120(arg1)
    print("OnSubFinish7014120")
end

function Quest70141:OnSubFailed7014120(arg1)
    print("OnSubFailed7014120")
end

function Quest70141:OnSubStart7014106(arg1)
    print("OnSubStart7014106")
end

function Quest70141:OnSubFinish7014106(arg1)
    print("OnSubFinish7014106")
    if self:GetQuestVar(7014106, 1) < 3 then
        self:NarratorOnlyTask(datas.NarratorTable_1, nil, "")
    end
end

function Quest70141:OnSubFailed7014106(arg1)
    print("OnSubFailed7014106")
end

function Quest70141:OnSubStart7014108(arg1)
    print("OnSubStart7014108")
end

function Quest70141:OnSubFinish7014108(arg1)
    print("OnSubFinish7014108")
    self:PlayCutsceneIndex("7014103", self.Reminder7014108, nil, nil, false)
end

function Quest70141:OnSubFailed7014108(arg1)
    print("OnSubFailed7014108")
end

function Quest70141:OnSubStart7014121(arg1)
    print("OnSubStart7014121")
end

function Quest70141:OnSubFinish7014121(arg1)
    print("OnSubFinish7014121")
    self:TransmitPlayerByQuestId(7014121, 7014121)
    actorMgr:CreateActorWithPos(datas.Q7014121Trigger_.alias, datas.Q7014121Trigger_.script, datas.Q7014121Trigger_.id, 0, datas.Q7014121Trigger_.point.pos, datas.Q7014121Trigger_.point.rot, true, false, 3)
end

function Quest70141:OnSubFailed7014121(arg1)
    print("OnSubFailed7014121")
end

function Quest70141:OnSubStart7014124(arg1)
    print("OnSubStart7014124")
end

function Quest70141:OnSubFinish7014124(arg1)
    print("OnSubFinish7014124")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest70141:OnSubFailed7014124(arg1)
    print("OnSubFailed7014124")
end

function Quest70141:OnSubStart7014101(arg1)
    print("OnSubStart7014101")
end

function Quest70141:OnSubFinish7014101(arg1)
    print("OnSubFinish7014101")
end

function Quest70141:OnSubFailed7014101(arg1)
    print("OnSubFailed7014101")
end

function Quest70141:OnSubStart7014102(arg1)
    print("OnSubStart7014102")
end

function Quest70141:OnSubFinish7014102(arg1)
    print("OnSubFinish7014102")
end

function Quest70141:OnSubFailed7014102(arg1)
    print("OnSubFailed7014102")
end

function Quest70141:OnSubStart7014125(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7014125, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70141:OnSubFinish7014125(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70141:OnSubFailed7014125(arg1)
    print("OnSubFailed7014125")
end

function Quest70141:OnSubStart7014126(arg1)
    print("OnSubStart7014126")
end

function Quest70141:OnSubFinish7014126(arg1)
    print("OnSubFinish7014126")
end

function Quest70141:OnSubFailed7014126(arg1)
    print("OnSubFailed7014126")
end

function Quest70141:OnSubStart7014130(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7014130, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70141:OnSubFinish7014130(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70141:OnSubFailed7014130(arg1)
    print("OnSubFailed7014130")
end

function Quest70141:OnSubStart7014127(arg1)
    print("OnSubStart7014127")
end

function Quest70141:OnSubFinish7014127(arg1)
    print("OnSubFinish7014127")
end

function Quest70141:OnSubFailed7014127(arg1)
    print("OnSubFailed7014127")
end

function Quest70141:OnSubStart7014104(arg1)
    print("OnSubStart7014104")
end

function Quest70141:OnSubFinish7014104(arg1)
    print("OnSubFinish7014104")
end

function Quest70141:OnSubFailed7014104(arg1)
    print("OnSubFailed7014104")
end

function Quest70141:OnSubStart7014132(arg1)
    print("OnSubStart7014132")
end

function Quest70141:OnSubFinish7014132(arg1)
    print("OnSubFinish7014132")
end

function Quest70141:OnSubFailed7014132(arg1)
    print("OnSubFailed7014132")
end

function Quest70141:OnSubStart7014133(arg1)
    print("OnSubStart7014133")
end

function Quest70141:OnSubFinish7014133(arg1)
    print("OnSubFinish7014133")
end

function Quest70141:OnSubFailed7014133(arg1)
    print("OnSubFailed7014133")
end

function Quest70141:OnSubStart7014135(arg1)
    print("OnSubStart7014135")
end

function Quest70141:OnSubFinish7014135(arg1)
    print("OnSubFinish7014135")
end

function Quest70141:OnSubFailed7014135(arg1)
    print("OnSubFailed7014135")
end

function Quest70141:OnSubStart7014134(arg1)
    print("OnSubStart7014134")
end

function Quest70141:OnSubFinish7014134(arg1)
    print("OnSubFinish7014134")
end

function Quest70141:OnSubFailed7014134(arg1)
    print("OnSubFailed7014134")
end

function Quest70141:OnSubStart7014116(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7014116, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70141:OnSubFinish7014116(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70141:OnSubFailed7014116(arg1)
    print("OnSubFailed7014116")
end

function Quest70141:OnSubStart7014107(arg1)
    print("OnSubStart7014107")
end

function Quest70141:OnSubFinish7014107(arg1)
    print("OnSubFinish7014107")
end

function Quest70141:OnSubFailed7014107(arg1)
    print("OnSubFailed7014107")
end

function Quest70141:OnSubStart7014114(arg1)
    print("OnSubStart7014114")
end

function Quest70141:OnSubFinish7014114(arg1)
    print("OnSubFinish7014114")
end

function Quest70141:OnSubFailed7014114(arg1)
    print("OnSubFailed7014114")
end

function Quest70141:OnSubStart7014136(arg1)
    print("OnSubStart7014136")
end

function Quest70141:OnSubFinish7014136(arg1)
    print("OnSubFinish7014136")
end

function Quest70141:OnSubFailed7014136(arg1)
    print("OnSubFailed7014136")
end

function Quest70141:OnSubStart7014137(arg1)
    print("OnSubStart7014137")
end

function Quest70141:OnSubFinish7014137(arg1)
    print("OnSubFinish7014137")
end

function Quest70141:OnSubFailed7014137(arg1)
    print("OnSubFailed7014137")
end

function Quest70141:OnSubStart7014138(arg1)
    print("OnSubStart7014138")
end

function Quest70141:OnSubFinish7014138(arg1)
    print("OnSubFinish7014138")
end

function Quest70141:OnSubFailed7014138(arg1)
    print("OnSubFailed7014138")
end

function Quest70141:OnSubStart7014139(arg1)
    print("OnSubStart7014139")
end

function Quest70141:OnSubFinish7014139(arg1)
    print("OnSubFinish7014139")
end

function Quest70141:OnSubFailed7014139(arg1)
    print("OnSubFailed7014139")
end

function Quest70141:OnSubStart7014117(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7014117, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70141:OnSubFinish7014117(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70141:OnSubFailed7014117(arg1)
    print("OnSubFailed7014117")
end

function Quest70141:OnSubStart7014128(arg1)
    print("OnSubStart7014128")
end

function Quest70141:OnSubFinish7014128(arg1)
    print("OnSubFinish7014128")
end

function Quest70141:OnSubFailed7014128(arg1)
    print("OnSubFailed7014128")
end

function Quest70141:OnSubStart7014131(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7014131, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70141:OnSubFinish7014131(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70141:OnSubFailed7014131(arg1)
    print("OnSubFailed7014131")
end

function Quest70141:OnSubStart7014129(arg1)
    print("OnSubStart7014129")
end

function Quest70141:OnSubFinish7014129(arg1)
    print("OnSubFinish7014129")
end

function Quest70141:OnSubFailed7014129(arg1)
    print("OnSubFailed7014129")
end

function Quest70141:OnSubStart7014113(arg1)
    print("OnSubStart7014113")
end

function Quest70141:OnSubFinish7014113(arg1)
    print("OnSubFinish7014113")
end

function Quest70141:OnSubFailed7014113(arg1)
    print("OnSubFailed7014113")
end

function Quest70141:OnSubStart7014140(arg1)
    print("OnSubStart7014140")
end

function Quest70141:OnSubFinish7014140(arg1)
    print("OnSubFinish7014140")
end

function Quest70141:OnSubFailed7014140(arg1)
    print("OnSubFailed7014140")
end

function Quest70141:OnSubStart7014141(arg1)
    print("OnSubStart7014141")
end

function Quest70141:OnSubFinish7014141(arg1)
    print("OnSubFinish7014141")
end

function Quest70141:OnSubFailed7014141(arg1)
    print("OnSubFailed7014141")
end

function Quest70141:OnSubStart7014142(arg1)
    print("OnSubStart7014142")
end

function Quest70141:OnSubFinish7014142(arg1)
    print("OnSubFinish7014142")
end

function Quest70141:OnSubFailed7014142(arg1)
    print("OnSubFailed7014142")
end

function Quest70141:OnSubStart7014143(arg1)
    print("OnSubStart7014143")
end

function Quest70141:OnSubFinish7014143(arg1)
    print("OnSubFinish7014143")
end

function Quest70141:OnSubFailed7014143(arg1)
    print("OnSubFailed7014143")
end

function Quest70141:OnSubStart7014103(arg1)
    print("OnSubStart7014103")
end

function Quest70141:OnSubFinish7014103(arg1)
    print("OnSubFinish7014103")
end

function Quest70141:OnSubFailed7014103(arg1)
    print("OnSubFailed7014103")
end

function Quest70141:OnSubStart7014144(arg1)
    print("OnSubStart7014144")
end

function Quest70141:OnSubFinish7014144(arg1)
    print("OnSubFinish7014144")
end

function Quest70141:OnSubFailed7014144(arg1)
    print("OnSubFailed7014144")
end

function Quest70141:OnSubStart7014105(arg1)
    print("OnSubStart7014105")
end

function Quest70141:OnSubFinish7014105(arg1)
    print("OnSubFinish7014105")
end

function Quest70141:OnSubFailed7014105(arg1)
    print("OnSubFailed7014105")
end

function Quest70141:OnSubStart7014122(arg1)
    print("OnSubStart7014122")
    self:TransmitPlayerByQuestId(7014122, 7014122, self.CSPlayBlackScreen7014122)
end

function Quest70141:OnSubFinish7014122(arg1)
    print("OnSubFinish7014122")
end

function Quest70141:OnSubFailed7014122(arg1)
    print("OnSubFailed7014122")
end

function Quest70141:OnSubStart7014123(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7014123, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70141:OnSubFinish7014123(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70141:OnSubFailed7014123(arg1)
    print("OnSubFailed7014123")
end

function Quest70141:OnSubStart7014115(arg1)
    print("OnSubStart7014115")
end

function Quest70141:OnSubFinish7014115(arg1)
    print("OnSubFinish7014115")
end

function Quest70141:OnSubFailed7014115(arg1)
    print("OnSubFailed7014115")
end

function Quest70141:OnSubStart7014112(arg1)
    print("OnSubStart7014112")
end

function Quest70141:OnSubFinish7014112(arg1)
    print("OnSubFinish7014112")
end

function Quest70141:OnSubFailed7014112(arg1)
    print("OnSubFailed7014112")
end

return Quest70141
