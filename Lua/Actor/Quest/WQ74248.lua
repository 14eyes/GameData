require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74248 = class("Quest74248", QuestActorProxy)
Quest74248.defaultAlias = "Quest74248"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest74248:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74248:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7424801"] = self.OnSubStart7424801,
        ["7424802"] = self.OnSubStart7424802,
        ["7424803"] = self.OnSubStart7424803,
        ["7424804"] = self.OnSubStart7424804
    }
end

function Quest74248:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7424801"] = self.OnSubFinish7424801,
        ["7424802"] = self.OnSubFinish7424802,
        ["7424803"] = self.OnSubFinish7424803,
        ["7424804"] = self.OnSubFinish7424804
    }
end

function Quest74248:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7424802"] = self.OnSubFailed7424802, ["7424803"] = self.OnSubFailed7424803}
end

function Quest74248:Start()
    print("Start")
end

function Quest74248:OnDestroy()
    print("OnDestroy")
end

function Quest74248:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74248:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74248:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7424803N1318Trigger")
    this:ActorDestroy("Q7424801Trigger", 74248)
    this:SafeDestroyQuestNpc(npcs.Npc1318_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
    this:LightNotifyTo(npcs.Npc5038.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5039.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5040.alias, 0, true)
    this:RemoveLocalGadget(70711549, "10")
    this:RemoveLocalGadget(70711542, "8")
    this:RemoveLocalGadget(70711542, "7")
    this:RemoveLocalGadget(70711542, "6")
    this:RemoveLocalGadget(70711542, "5")
    this:RemoveLocalGadget(73177011, "4")
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177011, "1")
    this:RemoveLocalGadget(73177010, "0")
    this:RecycleAllRes()
end

function Quest74248:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7424801Trigger", 74248)
end

function Quest74248:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7424801 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7424802 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest74248:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest74248:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest74248:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest74248:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74248:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 3541.468, y = 445.895, z = 4429.617}, 20, 73177007, 10000133, 7424802) then
        actorUtils.FinishQuestWithParam({false}, {7424802})
    else
        if this:GetSubQuestState(7424802) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest74248:OnSubStart7424801(arg1)
    print("OnSubStart7424801")
    actorMgr:CreateActorWithPos("Q7424801Trigger", "Actor/Gadget/Q7424801Trigger", 70900002, 0, points.Q7424801Trigger.pos, points.Q7424801Trigger.rot, true, false, 3, nil, 0, 74248)
end

function Quest74248:OnSubFinish7424801(arg1)
    print("OnSubFinish7424801")
end

function Quest74248:OnSubStart7424802(arg1)
    print("OnSubStart7424802")
    this:NotifyTo(npcs.Npc5038.alias, 1, true)
    this:NotifyTo(npcs.Npc5039.alias, 1, true)
    this:NotifyTo(npcs.Npc5040.alias, 1, true)
    this:RepeatSitCheck()
end

function Quest74248:OnSubFinish7424802(arg1)
    print("OnSubFinish7424802")
end

function Quest74248:OnSubFailed7424802(arg1)
    print("OnSubFailed7424802")
    this:RecycleAllRes()
end

function Quest74248:OnSubStart7424803(arg1)
    print("OnSubStart7424803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7424803, 0, 30, 0.5, npcs.Npc1318_1.id)
    this:NotifyTo(npcs.Npc5038.alias, 1, true)
    this:NotifyTo(npcs.Npc5039.alias, 1, true)
    this:NotifyTo(npcs.Npc5040.alias, 1, true)
end

function Quest74248:OnSubFinish7424803(arg1)
    print("OnSubFinish7424803")
    this:NpcDestroyImmediately(3, npcs.Npc1318_1.alias)
end

function Quest74248:OnSubFailed7424803(arg1)
    print("OnSubFailed7424803")
    this:RecycleAllRes()
end

function Quest74248:OnSubStart7424804(arg1)
    print("OnSubStart7424804")
    this:CreateQuestNpc(arg1, npcs.Npc1318_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1077.id, 0, false, 0)
    this:NotifyTo(npcs.Npc5038.alias, 1, true)
    this:NotifyTo(npcs.Npc5039.alias, 1, true)
    this:NotifyTo(npcs.Npc5040.alias, 1, true)
    this:CreateLocalGadget(70711549, "10", {x = 3551.4, y = 446.95, z = 4432.006}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70711542, "8", {x = 3551.317, y = 446.945, z = 4432.402}, {x = 0, y = 350.84, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70711542, "7", {x = 3551.776, y = 446.945, z = 4432.039}, {x = 0, y = 84.669, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70711542, "6", {x = 3551.41, y = 446.945, z = 4431.563}, {x = 0, y = 175.482, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70711542, "5", {x = 3550.934, y = 446.945, z = 4431.933}, {x = 0, y = 262.778, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "4", {x = 3551.167, y = 446.167, z = 4433.064}, {x = 0, y = 169.65, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "3", {x = 3550.248, y = 446.167, z = 4431.85}, {x = 0, y = 95.528, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 3551.522, y = 446.167, z = 4430.946}, {x = 0, y = 356.5, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "1", {x = 3552.41, y = 446.167, z = 4432.21}, {x = 0, y = 252.097, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177010, "0", {x = 3551.361, y = 446.167, z = 4431.987}, {x = 0, y = 307.611, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest74248:OnSubFinish7424804(arg1)
    print("OnSubFinish7424804")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1318_1.alias)
        this:NpcDestroyImmediately(3, npcs.Npc1075.alias)
        this:NpcDestroyImmediately(3, npcs.Npc1077.alias)
        this:LightNotifyTo(npcs.Npc5038.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5039.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5040.alias, 0, true)
        this:RecycleAllRes()
    end)
end

return Quest74248
